.class public abstract Lw2/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lv2/b;
.end annotation

.annotation runtime Lw2/k;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lw2/h;
    .locals 0

    invoke-static {p0}, Lw2/G;->b(Ljava/lang/String;)Lw2/h;

    move-result-object p0

    return-object p0
.end method

.method public static c()Z
    .locals 1

    invoke-static {}, Lw2/G;->i()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public abstract b()I
.end method

.method public abstract d(Ljava/lang/CharSequence;)Lw2/g;
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method public abstract toString()Ljava/lang/String;
.end method
