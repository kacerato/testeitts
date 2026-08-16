.class public final LX/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LC/e;


# static fields
.field public static final c:LX/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LX/c;

    invoke-direct {v0}, LX/c;-><init>()V

    sput-object v0, LX/c;->c:LX/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()LX/c;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, LX/c;->c:LX/c;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "EmptySignature"

    return-object v0
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 0
    .param p1    # Ljava/security/MessageDigest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method
