.class public final synthetic Lcom/jme3/system/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic b:Lcom/jme3/system/JmeSystemDelegate;


# direct methods
.method public synthetic constructor <init>(Lcom/jme3/system/JmeSystemDelegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jme3/system/b;->b:Lcom/jme3/system/JmeSystemDelegate;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/jme3/system/b;->b:Lcom/jme3/system/JmeSystemDelegate;

    check-cast p1, Lcom/jme3/system/AppSettings;

    check-cast p2, Ljava/lang/Boolean;

    invoke-static {v0, p1, p2}, Lcom/jme3/system/JmeSystemDelegate;->b(Lcom/jme3/system/JmeSystemDelegate;Lcom/jme3/system/AppSettings;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
