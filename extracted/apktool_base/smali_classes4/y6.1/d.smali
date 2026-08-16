.class public Ly6/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ly6/a;

.field public static final b:[LF6/d;

.field public static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ld8/r;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lz6/c;

    invoke-direct {v0}, Lz6/c;-><init>()V

    new-instance v1, LC6/c;

    invoke-direct {v1}, LC6/c;-><init>()V

    new-instance v2, Lz6/b;

    invoke-direct {v2}, Lz6/b;-><init>()V

    new-instance v3, Lz6/a;

    invoke-direct {v3}, Lz6/a;-><init>()V

    new-instance v4, LD6/a;

    invoke-direct {v4}, LD6/a;-><init>()V

    new-instance v5, LG6/g;

    invoke-direct {v5}, LG6/g;-><init>()V

    new-instance v6, LB6/f;

    invoke-direct {v6}, LB6/f;-><init>()V

    new-instance v7, LI6/c;

    invoke-direct {v7}, LI6/c;-><init>()V

    const/16 v8, 0x8

    new-array v8, v8, [LF6/d;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    const/4 v0, 0x1

    aput-object v1, v8, v0

    const/4 v0, 0x2

    aput-object v2, v8, v0

    const/4 v0, 0x3

    aput-object v3, v8, v0

    const/4 v0, 0x4

    aput-object v4, v8, v0

    const/4 v0, 0x5

    aput-object v5, v8, v0

    const/4 v0, 0x6

    aput-object v6, v8, v0

    const/4 v0, 0x7

    aput-object v7, v8, v0

    sput-object v8, Ly6/d;->b:[LF6/d;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    sput-object v0, Ly6/d;->c:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ld8/r;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loadedClass"
        }
    .end annotation

    sget-object v0, Ly6/d;->c:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static b()V
    .locals 1

    sget-object v0, Ly6/d;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public static c(I)LF6/d;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idx"
        }
    .end annotation

    sget-object v0, Ly6/d;->b:[LF6/d;

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static d()I
    .locals 1

    sget-object v0, Ly6/d;->b:[LF6/d;

    array-length v0, v0

    return v0
.end method

.method public static e(I)Ld8/r;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idx"
        }
    .end annotation

    sget-object v0, Ly6/d;->c:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ld8/r;

    return-object p0
.end method

.method public static f()I
    .locals 1

    sget-object v0, Ly6/d;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public static g(Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filePath"
        }
    .end annotation

    sget-object v0, Ly6/d;->b:[LF6/d;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    new-instance v5, Ljd/b;

    invoke-direct {v5, p0}, Ljd/b;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5}, LF6/d;->supportFile(Ljd/b;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method
