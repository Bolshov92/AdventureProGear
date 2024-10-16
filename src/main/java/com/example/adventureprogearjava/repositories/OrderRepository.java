package com.example.adventureprogearjava.repositories;

import com.example.adventureprogearjava.entity.Order;
import com.example.adventureprogearjava.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;

@Repository
public interface OrderRepository extends JpaRepository<Order, Long> {
    @Modifying
    @Query(value = "UPDATE orders SET city = :city, comment = :comment, order_date = :orderDate, " +
            "post_address = :postAddress, price = :price, status = CAST(:status AS status), user_id = :userId " +
            "WHERE id = :id",
            nativeQuery = true)
    void update(@Param("id") Long id,
                @Param("city") String city,
                @Param("comment") String comment,
                @Param("orderDate") LocalDateTime orderDate,
                @Param("postAddress") String postAddress,
                @Param("price") Long price,
                @Param("status") String status,
                @Param("userId") Long userId);

    Optional<Order> findByIdAndUser(Long id, User user);
    List<Order> findAllByUser(User user);

    Optional<Order> findById(Long id);

}
