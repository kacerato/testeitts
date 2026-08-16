.class public abstract Lre/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lre/b$a;
    }
.end annotation


# static fields
.field public static final a:Lqe/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqe/s<",
            "Lre/b$a;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lqe/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqe/s<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lqe/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqe/s<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lqe/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqe/s<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Lqe/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqe/s<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:Lqe/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqe/s<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Lqe/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqe/s<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "list-item-type"

    invoke-static {v0}, Lqe/s;->f(Ljava/lang/String;)Lqe/s;

    move-result-object v0

    sput-object v0, Lre/b;->a:Lqe/s;

    const-string v0, "bullet-list-item-level"

    invoke-static {v0}, Lqe/s;->f(Ljava/lang/String;)Lqe/s;

    move-result-object v0

    sput-object v0, Lre/b;->b:Lqe/s;

    const-string v0, "ordered-list-item-number"

    invoke-static {v0}, Lqe/s;->f(Ljava/lang/String;)Lqe/s;

    move-result-object v0

    sput-object v0, Lre/b;->c:Lqe/s;

    const-string v0, "heading-level"

    invoke-static {v0}, Lqe/s;->f(Ljava/lang/String;)Lqe/s;

    move-result-object v0

    sput-object v0, Lre/b;->d:Lqe/s;

    const-string v0, "link-destination"

    invoke-static {v0}, Lqe/s;->f(Ljava/lang/String;)Lqe/s;

    move-result-object v0

    sput-object v0, Lre/b;->e:Lqe/s;

    const-string v0, "paragraph-is-in-tight-list"

    invoke-static {v0}, Lqe/s;->f(Ljava/lang/String;)Lqe/s;

    move-result-object v0

    sput-object v0, Lre/b;->f:Lqe/s;

    const-string v0, "code-block-info"

    invoke-static {v0}, Lqe/s;->f(Ljava/lang/String;)Lqe/s;

    move-result-object v0

    sput-object v0, Lre/b;->g:Lqe/s;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
