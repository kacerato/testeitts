.class public Lab/c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc7/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lab/c;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "NormalMaps finished"

    return-object v0
.end method

.method public b()V
    .locals 1

    const/4 v0, -0x1

    invoke-static {v0}, Lab/c;->d(I)I

    const/4 v0, 0x0

    invoke-static {v0}, Lab/c;->c(Lc7/c;)Lc7/c;

    return-void
.end method
