/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.mycompany.soundsurfer;

public class User{
    private String username;
    private String password; 
    private int numSongs;
    private int numArtists;
    private String favGenre;
    private String favArtist;
    private String favSong;
    
    public User(String user, String pass){
        username = user; 
        password = pass; 
    }
    
    public String getUsername(){
        return this.username; 
    }
    
    public void setUsername(String name){
        username = name; 
    }
  
    public String getPassword(){
        return this.password; 
    }
    
    public void setPassword(String pass){   
        password = pass; 
    }
    
    public int getNumSongs() {
        return this.numSongs;
    }
    
    public void setNumSongs(int numSongs) {
        this.numSongs = numSongs;
    }
    
    public int getNumArtists() {
        return this.numArtists;
    }
   
    public void setNumArtists (int numArtists) {
        this.numArtists = numArtists;
    }
    
    public String getFavGenre() {
        //later when array of genres is passed, a count of each can be recorded 
        //returning the highest one
        return this.favGenre;
    }
   
    public void setFavGenre (String favGenre) {
        this.favGenre = favGenre;
    }
    
    public String getFavArtist() {
        //later when array of artists is passed, a count of each can be recorded
        //returning the highest one
        return this.favArtist;
    }
   
    public void setFavArtist (String favArtist) {
        this.favArtist = favArtist;
    }
    
    public String getFavSong() {
        return this.favSong;
    }
    
    public void setFavSong(String favSong) {
        //later when array of songs is passed, a count of each can be recorded
        //returning the highest one
        this.favSong = favSong;
    }
}
 