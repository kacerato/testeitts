.class public Lri/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/util/r;


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lri/f;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public Z2(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Lri/b;

    invoke-virtual {p1}, Lri/b;->b()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lri/f;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lri/f;->b:Ljava/lang/String;

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method
