.class public final Lorg/eclipse/jdt/core/CompletionFlags;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Default:I = 0x0

.field public static final StaticImport:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isStaticImport(I)Z
    .locals 1

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
