package lesson6.forum;

import java.util.Date;

public class ForumPost {
    private long id;
    private ForumSubcategory subcategory;
    private User user;
    private ForumPost parentPost;
    private String title;
    private String content;
    private boolean isPoll;
    private Date date;
    private String ip;
}
