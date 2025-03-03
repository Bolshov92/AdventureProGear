package com.example.adventureprogearjava.mapper;

import com.example.adventureprogearjava.dto.CategoryDTO;
import com.example.adventureprogearjava.dto.SubSubCategoryDTO;
import com.example.adventureprogearjava.dto.SubcategoryDTO;
import com.example.adventureprogearjava.entity.Category;
import com.example.adventureprogearjava.entity.Section;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

import java.util.List;

@Mapper(componentModel = "spring")
public interface CategoryMapper {
    String CATEGORY_API = "https://adventure-production-f742.up.railway.app/api/public/categories/";

    @Mapping(target = "sectionId", source = "section.id")
    @Mapping(target = "selfLink", expression = "java(createSelfLink(category))")
    CategoryDTO toDTO(Category category);

    @Mapping(target = "section", source = "sectionId")
    Category toEntity(CategoryDTO categoryDTO);

    @Mapping(target = "subcategoryNameUa", source = "category.categoryNameUa")
    @Mapping(target = "subcategoryNameEn", source = "category.categoryNameEn")
    @Mapping(target = "parentCategoryId", expression = "java(category.getParentCategory() != null ? category.getParentCategory().getId() : null)")
    @Mapping(target = "id", source = "category.id")
    @Mapping(target = "selfLink", expression = "java(CATEGORY_API + category.getId())")
    SubcategoryDTO toDTOFromCategory(Category category);

    @Mapping(target = "subSubCategoryNameUa", source = "category.categoryNameUa")
    @Mapping(target = "subSubCategoryNameEn", source = "category.categoryNameEn")
    @Mapping(target = "subCategoryId", source = "category.parentCategory.id")
    @Mapping(target = "selfLink", expression = "java(CATEGORY_API + category.getId())")
    SubSubCategoryDTO toSubSubCategoryDTO(Category category);

    List<SubcategoryDTO> toSubcategoryDTOs(List<Category> subCategories);

    default Section map(Long sectionId) {
        if (sectionId == null) {
            return null;
        }
        Section section = new Section();
        section.setId(sectionId);
        return section;
    }

    default String createSelfLink(Category category) {
        return category != null ? CATEGORY_API + category.getId() : null; // Оновлено для консистентності
    }
}
