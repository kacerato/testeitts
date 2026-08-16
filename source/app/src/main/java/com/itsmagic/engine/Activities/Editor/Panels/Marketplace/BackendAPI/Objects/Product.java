package com.itsmagic.engine.Activities.Editor.Panels.Marketplace.BackendAPI.Objects;

import Tc.b;
import X7.a;
import android.graphics.drawable.Drawable;
import com.google.gson.JsonSyntaxException;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.Date;
import java.util.List;
import org.eclipse.jdt.internal.core.JavaElement;
import org.json.JSONObject;

@Deprecated
public class Product {

    public static final int f71722c = 1;

    public static final int f71723d = 2;

    public static final int f71724e = 0;

    public static final int f71725f = 1;

    public static final int f71726g = 2;

    public static final int f71727h = 2;

    public static final int f71728i = 3;

    public Object f71729a;

    public Drawable f71730b;

    @Expose
    private int currentVersion;

    @Expose
    private long f71731id;

    @Expose
    private int priceCurrency;

    @Expose
    private int priceValue;

    @Expose
    private int status;

    @Expose
    private long userID;

    @Expose
    private String userName;

    @Expose
    private Date createdAt = new Date();

    @Expose
    private Date updatedAt = new Date();

    @Expose
    private boolean userBought = false;

    @Expose
    private boolean owner = false;

    @Expose
    private boolean hasIcon = false;

    @Expose
    private boolean canReview = false;

    @Expose
    private final Description description = new Description();

    @Expose
    private final Tittle tittle = new Tittle();

    @Expose
    private final List<Image> imageList = new SteppedArrayList();

    @Expose
    private GenericReview genericReview = new GenericReview();

    @Expose
    private final List<Tag> tagList = new SteppedArrayList();

    @Expose
    private final Statistic statistic = new Statistic();

    public static class Description {

        @Expose
        private long f71732id;

        @Expose
        private int language;

        @Expose
        private String text;

        public long a() {
            return this.f71732id;
        }

        public int b() {
            return this.language;
        }

        public String c() {
            return this.text;
        }
    }

    public static class GenericReview {

        @Expose
        private long f71733id;

        @Expose
        private float stars;

        @Expose
        private int totalInMedian;

        @Expose
        private final List<UserReview> userReviews = new SteppedArrayList();

        public long a() {
            return this.f71733id;
        }

        public float b() {
            return this.stars;
        }

        public int c() {
            return this.totalInMedian;
        }

        public UserReview d(int i10) {
            return this.userReviews.get(i10);
        }

        public int e() {
            return this.userReviews.size();
        }

        public String toString() {
            return "{id=" + this.f71733id + ", stars=" + this.stars + ", userReviews:[" + b.c0(this.userReviews) + "]" + JavaElement.JEM_ANNOTATION;
        }
    }

    public static class Image {

        public static final int f71734a = 1;

        public static final int f71735b = 2;

        public static final int f71736c = 3;

        @Expose
        private String data;

        @Expose
        private long f71737id;

        @Expose
        private int language;

        @Expose
        private int type;

        public String a() {
            return this.data;
        }

        public long b() {
            return this.f71737id;
        }

        public int c() {
            return this.language;
        }

        public int d() {
            return this.type;
        }
    }

    public static class Statistic {

        @Expose
        private long downloads;

        @Expose
        private long f71738id;

        @Expose
        private long purchases;

        @Expose
        private long sizeInKBs;

        public long a() {
            return this.downloads;
        }

        public long b() {
            return this.f71738id;
        }

        public long c() {
            return this.purchases;
        }

        public long d() {
            return this.sizeInKBs;
        }
    }

    public static class Tag {

        @Expose
        private long f71739id;

        @Expose
        private String name;

        public long a() {
            return this.f71739id;
        }

        public String b() {
            return this.name;
        }
    }

    public static class Tittle {

        @Expose
        private long f71740id;

        @Expose
        private int language;

        @Expose
        private String text;

        public long a() {
            return this.f71740id;
        }

        public int b() {
            return this.language;
        }

        public String c() {
            return this.text;
        }
    }

    public static class UserReview {

        @Expose
        private long f71741id;

        @Expose
        private boolean isVIP;

        @Expose
        private Date reviewAt;

        @Expose
        private int stars;

        @Expose
        private String text;

        @Expose
        private long userID;

        @Expose
        private String userName;

        public long a() {
            return this.f71741id;
        }

        public Date b() {
            return this.reviewAt;
        }

        public int c() {
            return this.stars;
        }

        public String d() {
            return this.text;
        }

        public long e() {
            return this.userID;
        }

        public String f() {
            int i10 = 0;
            while (true) {
                String str = this.userName;
                if (str == null || !str.startsWith("base64@")) {
                    break;
                }
                this.userName = Vc.b.a(this.userName.replace("base64@", ""));
                i10++;
            }
            if (i10 > 1) {
                System.out.println("BASE64 WAS DECODED " + i10 + " TIMES!!");
            }
            return this.userName;
        }

        public boolean g() {
            return this.isVIP;
        }

        public String toString() {
            return "{id=" + this.f71741id + ", userID=" + this.userID + ", text='" + this.text + JavaElement.JEM_MODULAR_CLASSFILE + ", stars=" + this.stars + ", reviewAt=" + String.valueOf(this.reviewAt) + ", userName='" + this.userName + JavaElement.JEM_MODULAR_CLASSFILE + JavaElement.JEM_ANNOTATION;
        }
    }

    public Product() {
    }

    public static Product d(JSONObject json) {
        try {
            return (Product) a.m().fromJson(json.toString(), Product.class);
        } catch (JsonSyntaxException e10) {
            throw new RuntimeException("Failed to deserialize " + json.toString(), e10);
        }
    }

    public Tag A(int i10) {
        return this.tagList.get(i10);
    }

    public int B() {
        return this.tagList.size();
    }

    public boolean a() {
        return this.canReview;
    }

    public boolean b(Product product) {
        return this.f71731id == product.j();
    }

    public boolean c(String tag) {
        for (int i10 = 0; i10 < this.tagList.size(); i10++) {
            if (this.tagList.get(i10).b().equalsIgnoreCase(tag)) {
                return true;
            }
        }
        return false;
    }

    public Date e() {
        return this.createdAt;
    }

    public int f() {
        return this.currentVersion;
    }

    public Description g() {
        return this.description;
    }

    public GenericReview h() {
        return this.genericReview;
    }

    public Drawable i() {
        return this.f71730b;
    }

    public long j() {
        return this.f71731id;
    }

    public int k() {
        return this.priceCurrency;
    }

    public int l() {
        return this.priceValue;
    }

    public Statistic m() {
        return this.statistic;
    }

    public int n() {
        return this.status;
    }

    public Tittle o() {
        return this.tittle;
    }

    public Date p() {
        return this.updatedAt;
    }

    public long q() {
        return this.userID;
    }

    public String r() {
        int i10 = 0;
        while (true) {
            String str = this.userName;
            if (str == null || !str.startsWith("base64@")) {
                break;
            }
            this.userName = Vc.b.a(this.userName.replace("base64@", ""));
            i10++;
        }
        if (i10 > 1) {
            System.out.println("BASE64 WAS DECODED " + i10 + " TIMES!!");
        }
        return this.userName;
    }

    public Object s() {
        return this.f71729a;
    }

    public Image t(int i10) {
        return this.imageList.get(i10);
    }

    public int u() {
        return this.imageList.size();
    }

    public boolean v() {
        return this.userBought;
    }

    public boolean w() {
        return this.hasIcon;
    }

    public boolean x() {
        return this.owner;
    }

    public void y(Drawable iconCache) {
        this.f71730b = iconCache;
    }

    public void z(Object userPointer) {
        this.f71729a = userPointer;
    }

    public Product(long id2) {
        this.f71731id = id2;
    }
}
