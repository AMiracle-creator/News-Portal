package model;

public class Post {
    private String title;
    private String topic;
    private String tag;
    private String text;

    public Post(String title, String topic, String tag, String text) {
        this.title = title;
        this.topic = topic;
        this.tag = tag;
        this.text = text;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getTopic() {
        return topic;
    }

    public void setTopic(String topic) {
        this.topic = topic;
    }

    public String getTag() {
        return tag;
    }

    public void setTag(String tag) {
        this.tag = tag;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }
}
