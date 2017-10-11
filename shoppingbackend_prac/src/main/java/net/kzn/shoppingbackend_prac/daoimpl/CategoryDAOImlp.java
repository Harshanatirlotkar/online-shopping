package net.kzn.shoppingbackend_prac.daoimpl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import net.kzn.shoppingbackend_prac.dao.CategoryDAO;
import net.kzn.shoppingbackend_prac.dto.Category;


@Repository("categoryDAO")
public class CategoryDAOImlp implements CategoryDAO {

	
	public static List<Category> categories = new ArrayList<>();
	static {
		Category category = new Category();
		category.setId(1);
		category.setName("Television");
		category.setDescription("vwvjnvjqvnnvkk k k ");
		category.setImageURL("cat_1.png");
		
		categories.add(category);
		
		
		category = new Category();
		category.setId(2);
		category.setName("mobile");
		category.setDescription("vwvjnvjqvnnvkk k k ");
		category.setImageURL("cat_2.png");
		
		categories.add(category);
		
		category = new Category();
		category.setId(3);
		category.setName("laptop");
		category.setDescription("vwvjnvjqvnnvkk k k ");
		category.setImageURL("cat_3.png");
		
		categories.add(category);
	}
	
	
	@Override
	public List<Category> list() {
		// TODO Auto-generated method stub
		return categories;
	}


	@Override
	public Category get(int id) {
		for(Category category : categories )
		{	
			
			if(category.getId() == id) return category;
		}
		return null;
	}

}
