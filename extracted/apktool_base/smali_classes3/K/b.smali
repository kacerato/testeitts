.class public LK/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJ/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LK/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LJ/n<",
        "LJ/g;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:LC/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LC/g<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:LJ/m;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LJ/m<",
            "LJ/g;",
            "LJ/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x9c4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "com.bumptech.glide.load.model.stream.HttpGlideUrlLoader.Timeout"

    invoke-static {v1, v0}, LC/g;->g(Ljava/lang/String;Ljava/lang/Object;)LC/g;

    move-result-object v0

    sput-object v0, LK/b;->b:LC/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, LK/b;-><init>(LJ/m;)V

    return-void
.end method

.method public constructor <init>(LJ/m;)V
    .locals 0
    .param p1    # LJ/m;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LJ/m<",
            "LJ/g;",
            "LJ/g;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, LK/b;->a:LJ/m;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, LJ/g;

    invoke-virtual {p0, p1}, LK/b;->d(LJ/g;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;IILC/h;)LJ/n$a;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # LC/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, LJ/g;

    invoke-virtual {p0, p1, p2, p3, p4}, LK/b;->c(LJ/g;IILC/h;)LJ/n$a;

    move-result-object p1

    return-object p1
.end method

.method public c(LJ/g;IILC/h;)LJ/n$a;
    .locals 0
    .param p1    # LJ/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # LC/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LJ/g;",
            "II",
            "LC/h;",
            ")",
            "LJ/n$a<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    iget-object p2, p0, LK/b;->a:LJ/m;

    if-eqz p2, :cond_1

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3, p3}, LJ/m;->b(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LJ/g;

    if-nez p2, :cond_0

    iget-object p2, p0, LK/b;->a:LJ/m;

    invoke-virtual {p2, p1, p3, p3, p1}, LJ/m;->c(Ljava/lang/Object;IILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    move-object p1, p2

    :cond_1
    :goto_0
    sget-object p2, LK/b;->b:LC/g;

    invoke-virtual {p4, p2}, LC/h;->a(LC/g;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    new-instance p3, LJ/n$a;

    new-instance p4, LD/j;

    invoke-direct {p4, p1, p2}, LD/j;-><init>(LJ/g;I)V

    invoke-direct {p3, p1, p4}, LJ/n$a;-><init>(LC/e;LD/d;)V

    return-object p3
.end method

.method public d(LJ/g;)Z
    .locals 0
    .param p1    # LJ/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x1

    return p1
.end method
