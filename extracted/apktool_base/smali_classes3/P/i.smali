.class public final LP/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LC/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LC/g<",
            "LC/b;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:LC/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LC/g<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "com.bumptech.glide.load.resource.gif.GifOptions.DecodeFormat"

    sget-object v1, LC/b;->DEFAULT:LC/b;

    invoke-static {v0, v1}, LC/g;->g(Ljava/lang/String;Ljava/lang/Object;)LC/g;

    move-result-object v0

    sput-object v0, LP/i;->a:LC/g;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "com.bumptech.glide.load.resource.gif.GifOptions.DisableAnimation"

    invoke-static {v1, v0}, LC/g;->g(Ljava/lang/String;Ljava/lang/Object;)LC/g;

    move-result-object v0

    sput-object v0, LP/i;->b:LC/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
