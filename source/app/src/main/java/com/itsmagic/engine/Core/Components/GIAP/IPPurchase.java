package com.itsmagic.engine.Core.Components.GIAP;

import com.google.gson.annotations.Expose;

public class IPPurchase {

    public int f72481a;

    @Expose
    private boolean acknow;

    @Expose
    private boolean acknowledged;

    public int f72482b;

    public boolean f72483c;

    @Expose
    private boolean consumed;

    @Expose
    private String orderID;

    @Expose
    private String packageName;

    @Expose
    private String productID;

    @Expose
    private String state;

    @Expose
    private boolean subscription;

    @Expose
    private String time;

    @Expose
    private String token;

    public IPPurchase() {
    }

    public void A(String token) {
        this.token = token;
    }

    public void a() {
        this.f72481a++;
    }

    public void b() {
        this.f72482b++;
    }

    public int c() {
        return this.f72481a;
    }

    public String d() {
        return this.orderID;
    }

    public String e() {
        return this.packageName;
    }

    public String f() {
        return this.productID;
    }

    public int g() {
        return this.f72482b;
    }

    public String h() {
        return this.state;
    }

    public String i() {
        return this.time;
    }

    public String j() {
        return this.token;
    }

    public boolean k() {
        return this.acknow;
    }

    public boolean l() {
        return this.acknowledged;
    }

    public boolean m() {
        return this.consumed;
    }

    public boolean n() {
        return this.f72483c;
    }

    public boolean o() {
        return this.subscription;
    }

    public void p(boolean acknow) {
        this.acknow = acknow;
    }

    public void q(boolean acknowledged) {
        this.acknowledged = acknowledged;
    }

    public void r() {
        this.consumed = true;
    }

    public void s(String orderID) {
        this.orderID = orderID;
    }

    public void t(String packageName) {
        this.packageName = packageName;
    }

    public void u(String productID) {
        this.productID = productID;
    }

    public void v() {
        this.f72483c = true;
    }

    public void w(boolean sent) {
        this.f72483c = sent;
    }

    public void x(String state) {
        this.state = state;
    }

    public void y(boolean subscription) {
        this.subscription = subscription;
    }

    public void z(String time) {
        this.time = time;
    }

    public IPPurchase(String orderID, String packageName, String productID, String time, String state, String token) {
        this.orderID = orderID;
        this.packageName = packageName;
        this.productID = productID;
        this.time = time;
        this.state = state;
        this.token = token;
    }

    public IPPurchase(String orderID, String packageName, String productID, String time, String state, String token, boolean isSubscription, boolean isAcknowledged) {
        this.orderID = orderID;
        this.packageName = packageName;
        this.productID = productID;
        this.time = time;
        this.state = state;
        this.token = token;
        this.subscription = isSubscription;
        this.acknowledged = isAcknowledged;
    }
}
