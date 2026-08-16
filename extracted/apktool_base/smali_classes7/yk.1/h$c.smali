.class public final Lyk/h$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyk/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Ljava/math/BigInteger;

.field public final b:Z


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyk/h$c;->a:Ljava/math/BigInteger;

    iput-boolean p2, p0, Lyk/h$c;->b:Z

    return-void
.end method

.method public static synthetic a(Lyk/h$c;)I
    .locals 0

    invoke-virtual {p0}, Lyk/h$c;->b()I

    move-result p0

    return p0
.end method


# virtual methods
.method public final b()I
    .locals 1

    iget-object v0, p0, Lyk/h$c;->a:Ljava/math/BigInteger;

    invoke-static {v0}, Lorg/bouncycastle/util/b;->l(Ljava/math/BigInteger;)I

    move-result v0

    return v0
.end method
