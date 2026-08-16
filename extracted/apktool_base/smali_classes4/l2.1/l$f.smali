.class public Ll2/l$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll2/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field public final a:Ll2/l$e;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final b:Ll2/l$e;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final c:Ll2/l$e;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final d:Ll2/l$e;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ll2/l$e;Ll2/l$e;Ll2/l$e;Ll2/l$e;)V
    .locals 0
    .param p1    # Ll2/l$e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ll2/l$e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ll2/l$e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ll2/l$e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Ll2/l$f;->a:Ll2/l$e;

    .line 4
    iput-object p2, p0, Ll2/l$f;->b:Ll2/l$e;

    .line 5
    iput-object p3, p0, Ll2/l$f;->c:Ll2/l$e;

    .line 6
    iput-object p4, p0, Ll2/l$f;->d:Ll2/l$e;

    return-void
.end method

.method public synthetic constructor <init>(Ll2/l$e;Ll2/l$e;Ll2/l$e;Ll2/l$e;Ll2/l$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Ll2/l$f;-><init>(Ll2/l$e;Ll2/l$e;Ll2/l$e;Ll2/l$e;)V

    return-void
.end method

.method public static synthetic a(Ll2/l$f;)Ll2/l$e;
    .locals 0

    iget-object p0, p0, Ll2/l$f;->a:Ll2/l$e;

    return-object p0
.end method

.method public static synthetic b(Ll2/l$f;)Ll2/l$e;
    .locals 0

    iget-object p0, p0, Ll2/l$f;->b:Ll2/l$e;

    return-object p0
.end method

.method public static synthetic c(Ll2/l$f;)Ll2/l$e;
    .locals 0

    iget-object p0, p0, Ll2/l$f;->c:Ll2/l$e;

    return-object p0
.end method

.method public static synthetic d(Ll2/l$f;)Ll2/l$e;
    .locals 0

    iget-object p0, p0, Ll2/l$f;->d:Ll2/l$e;

    return-object p0
.end method
