.class public final synthetic Lcom/jme3/system/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/jme3/system/JmeSystemDelegate;


# direct methods
.method public synthetic constructor <init>(Lcom/jme3/system/JmeSystemDelegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jme3/system/a;->b:Lcom/jme3/system/JmeSystemDelegate;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/system/a;->b:Lcom/jme3/system/JmeSystemDelegate;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/jme3/system/JmeSystemDelegate;->a(Lcom/jme3/system/JmeSystemDelegate;Ljava/lang/String;)V

    return-void
.end method
