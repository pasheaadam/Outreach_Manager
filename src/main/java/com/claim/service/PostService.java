package com.claim.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.claim.entity.Person;
import com.claim.entity.Post;
import com.claim.repository.PostRepository;

@Service
public class PostService {

	@Autowired
	private PostRepository postRepository;
	
	@Transactional
	public List<Post> findMyPost(String email){
		String[] emails = {email};
		return this.postRepository.findPost(emails);
		
	}
	
	@Transactional
	public void savePost(Post post){
		this.postRepository.save(post);
	}
	
	@Transactional
	public void save(Post picture) {
		this.postRepository.save(picture);
	}
}