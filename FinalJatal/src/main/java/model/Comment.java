package model;

public class Comment {
    private int comment_id;
    private String comment_text;
    private String comment_date;
    private int user_id;
    private User user;
    private int post_id;

    public Comment(){
    }

    public Comment(int comment_id, String text_comment, String date_comment, int idUser) {
        this.comment_id = comment_id;
        this.comment_text = text_comment;
        this.comment_date = date_comment;
        this.user_id = idUser;
    }

    public int getPost_id() {
        return post_id;
    }

    public void setPost_id(int post_id) {
        this.post_id = post_id;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getComment_date() {
        return comment_date;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public void setComment_date(String comment_date) {
        this.comment_date = comment_date;
    }

    public String getComment_text() {
        return comment_text;
    }

    public int getComment_id() {
        return comment_id;
    }

    public void setComment_id(int comment_id) {
        this.comment_id = comment_id;
    }

    public void setComment_text(String comment_text) {
        this.comment_text = comment_text;
    }
}
