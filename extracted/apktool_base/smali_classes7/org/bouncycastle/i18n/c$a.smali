.class public Lorg/bouncycastle/i18n/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/i18n/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final g:I = 0x0

.field public static final h:I = 0x1

.field public static final i:I = 0x2


# instance fields
.field public a:Lkj/a;

.field public b:[Z

.field public c:[I

.field public d:[Ljava/lang/Object;

.field public e:[Ljava/lang/Object;

.field public f:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Lorg/bouncycastle/i18n/c$a;-><init>([Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .locals 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/i18n/c$a;->a:Lkj/a;

    iput-object p1, p0, Lorg/bouncycastle/i18n/c$a;->d:[Ljava/lang/Object;

    array-length v0, p1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/bouncycastle/i18n/c$a;->e:[Ljava/lang/Object;

    array-length v0, p1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/bouncycastle/i18n/c$a;->f:[Ljava/lang/Object;

    array-length v0, p1

    new-array v0, v0, [Z

    iput-object v0, p0, Lorg/bouncycastle/i18n/c$a;->b:[Z

    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/i18n/c$a;->c:[I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_3

    aget-object v2, p1, v1

    instance-of v3, v2, Lkj/d;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/bouncycastle/i18n/c$a;->e:[Ljava/lang/Object;

    check-cast v2, Lkj/d;

    invoke-virtual {v2}, Lkj/d;->a()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v3, v1

    iget-object v2, p0, Lorg/bouncycastle/i18n/c$a;->c:[I

    aput v0, v2, v1

    goto :goto_1

    :cond_0
    instance-of v3, v2, Lkj/e;

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/bouncycastle/i18n/c$a;->e:[Ljava/lang/Object;

    check-cast v2, Lkj/e;

    invoke-virtual {v2}, Lkj/e;->a()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v3, v1

    aget-object v2, p1, v1

    instance-of v2, v2, Lkj/f;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/i18n/c$a;->c:[I

    const/4 v3, 0x2

    aput v3, v2, v1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lorg/bouncycastle/i18n/c$a;->c:[I

    aput v4, v2, v1

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lorg/bouncycastle/i18n/c$a;->e:[Ljava/lang/Object;

    aput-object v2, v3, v1

    iget-object v2, p0, Lorg/bouncycastle/i18n/c$a;->c:[I

    aput v4, v2, v1

    :goto_1
    iget-object v2, p0, Lorg/bouncycastle/i18n/c$a;->b:[Z

    iget-object v3, p0, Lorg/bouncycastle/i18n/c$a;->e:[Ljava/lang/Object;

    aget-object v3, v3, v1

    instance-of v3, v3, Lorg/bouncycastle/i18n/b;

    aput-boolean v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/i18n/c$a;->a:Lkj/a;

    if-eqz v0, :cond_3

    if-nez p2, :cond_0

    const-string p2, "null"

    :cond_0
    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lkj/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lkj/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    return-object p2
.end method

.method public b()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/i18n/c$a;->d:[Ljava/lang/Object;

    return-object v0
.end method

.method public c()Lkj/a;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/i18n/c$a;->a:Lkj/a;

    return-object v0
.end method

.method public d(Ljava/util/Locale;)[Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/i18n/c$a;->e:[Ljava/lang/Object;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/i18n/c$a;->e:[Ljava/lang/Object;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lorg/bouncycastle/i18n/c$a;->f:[Ljava/lang/Object;

    aget-object v3, v3, v1

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    aget-object v2, v2, v1

    iget-object v3, p0, Lorg/bouncycastle/i18n/c$a;->b:[Z

    aget-boolean v3, v3, v1

    if-eqz v3, :cond_1

    check-cast v2, Lorg/bouncycastle/i18n/b;

    invoke-virtual {v2, p1}, Lorg/bouncycastle/i18n/b;->n(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/i18n/c$a;->c:[I

    aget v3, v3, v1

    invoke-virtual {p0, v3, v2}, Lorg/bouncycastle/i18n/c$a;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lorg/bouncycastle/i18n/c$a;->c:[I

    aget v3, v3, v1

    invoke-virtual {p0, v3, v2}, Lorg/bouncycastle/i18n/c$a;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iget-object v2, p0, Lorg/bouncycastle/i18n/c$a;->f:[Ljava/lang/Object;

    aput-object v3, v2, v1

    :goto_1
    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/i18n/c$a;->e:[Ljava/lang/Object;

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f(Lkj/a;)V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/i18n/c$a;->a:Lkj/a;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/i18n/c$a;->e:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/i18n/c$a;->f:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lorg/bouncycastle/i18n/c$a;->a:Lkj/a;

    return-void
.end method
