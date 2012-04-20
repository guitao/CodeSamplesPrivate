/**
 * Copyright (C) 2011-2012 Chattrspace Inc.                    
 * code [at] RivelloMultimediaConsulting [dot] com                                                  
 *                                                                      
 * Permission is hereby granted, free of charge, to any person obtaining
 * a copy of this software and associated documentation files (the      
 * "Software"), to deal in the Software without restriction, including  
 * without limitation the rights to use, copy, modify, merge, publish,  
 * distribute, sublicense, and#or sell copies of the Software, and to   
 * permit persons to whom the Software is furnished to do so, subject to
 * the following conditions:                                            
 *                                                                      
 * The above copyright notice and this permission notice shall be       
 * included in all copies or substantial portions of the Software.      
 *                                                                      
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,      
 * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF   
 * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
 * IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR    
 * OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
 * ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
 * OTHER DEALINGS IN THE SOFTWARE.                                      
 */
//Marks the right margin of code *******************************************************************
package com.chattrspace.projects.mobilesingle.mvcs.controller.commands
{
	
	//--------------------------------------
	//  Imports
	//--------------------------------------
	import com.chattrspace.projects.mobilesingle.mvcs.model.HappyBirthdayModel;
	import com.chattrspace.projects.mobilesingle.mvcs.model.vo.LanguageVO;
	import com.chattrspace.projects.mobilesingle.mvcs.view.components.views.AbstractView;
	
	import flash.net.URLRequest;
	import flash.net.navigateToURL;
	
	import org.robotlegs.mvcs.Command;
	
	
	/**
	 * <p>Command: 'about us' type button was clicked</p>
	 * 
	 */
	public class SocialButtonClickedCommand extends Command
	{
		
		//--------------------------------------
		//  Properties
		//--------------------------------------
		/**
		 * Reference to the Model
		 * 
		 */
		[Inject]
		public var happyBirthdayModel : HappyBirthdayModel;
		
		
		/**
		 * Reference to the Signal
		 * 
		 */
		[Inject]
		public var buttonIDName : String;
		
		
		
		//--------------------------------------
		//  Methods
		//--------------------------------------
		/**
		 * Robotlegs Requirement: Execute the command
		 * 
		 * @return void
		 *
		 */
		override public function execute():void
		{
			
			//PROPERTIES
			var urlRequest : URLRequest;
			
			
			//SWITCH
			switch(buttonIDName)
			{
				case AbstractView.SOCIAL_EMAIL_BUTTON_ID:
					urlRequest = new URLRequest ("http://www.rivellomultimediaconsulting.com/contact/");
					break;
				case AbstractView.SOCIAL_TWITTER_BUTTON_ID : 
					urlRequest = new URLRequest ("https://twitter.com/#!/srivello");
					break;
				case AbstractView.SOCIAL_FACEBOOK_BUTTON_ID :
					urlRequest = new URLRequest ("https://www.facebook.com/RivelloMultimediaConsulting");
					break;
				case AbstractView.SOCIAL_VIMEO_BUTTON_ID :
					urlRequest = new URLRequest ("https://vimeo.com/srivello");
					break;
				case AbstractView.SOCIAL_RMC_WEBSITE_BUTTON_ID :
					urlRequest = new URLRequest ("https://www.RivelloMultimediaConsulting.com");
					break;
				default:
					throw new Error("switch failed social button");
					break;
			}
			
			//OPEN A URL IN THE BROWSER
			navigateToURL(urlRequest);
			
		}
	}
}