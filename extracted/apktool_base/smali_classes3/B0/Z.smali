.class public LB0/Z;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:LB0/Z;


# instance fields
.field public final a:Z

.field public final b:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final c:Ljava/lang/Throwable;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v6, LB0/Z;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, LB0/Z;-><init>(ZIILjava/lang/String;Ljava/lang/Throwable;)V

    sput-object v6, LB0/Z;->e:LB0/Z;

    return-void
.end method

.method public constructor <init>(ZIILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p4    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, LB0/Z;->a:Z

    iput p2, p0, LB0/Z;->d:I

    iput-object p4, p0, LB0/Z;->b:Ljava/lang/String;

    iput-object p5, p0, LB0/Z;->c:Ljava/lang/Throwable;

    return-void
.end method

.method public synthetic constructor <init>(ZIILjava/lang/String;Ljava/lang/Throwable;LB0/Y;)V
    .locals 0

    const/4 p5, 0x0

    const/4 p6, 0x0

    const/4 p2, 0x0

    const/4 p3, 0x1

    const/4 p4, 0x5

    move-object p1, p0

    .line 2
    invoke-direct/range {p1 .. p6}, LB0/Z;-><init>(ZIILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static b()LB0/Z;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, LB0/Z;->e:LB0/Z;

    return-object v0
.end method

.method public static c(Ljava/lang/String;)LB0/Z;
    .locals 7
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v6, LB0/Z;

    const/4 v3, 0x5

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move-object v0, v6

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, LB0/Z;-><init>(ZIILjava/lang/String;Ljava/lang/Throwable;)V

    return-object v6
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)LB0/Z;
    .locals 7
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v6, LB0/Z;

    const/4 v2, 0x1

    const/4 v3, 0x5

    const/4 v1, 0x0

    move-object v0, v6

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, LB0/Z;-><init>(ZIILjava/lang/String;Ljava/lang/Throwable;)V

    return-object v6
.end method

.method public static f(I)LB0/Z;
    .locals 7

    new-instance v6, LB0/Z;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x1

    move-object v0, v6

    move v2, p0

    invoke-direct/range {v0 .. v5}, LB0/Z;-><init>(ZIILjava/lang/String;Ljava/lang/Throwable;)V

    return-object v6
.end method

.method public static g(IILjava/lang/String;Ljava/lang/Throwable;)LB0/Z;
    .locals 7
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    new-instance v6, LB0/Z;

    const/4 v1, 0x0

    move-object v0, v6

    move v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, LB0/Z;-><init>(ZIILjava/lang/String;Ljava/lang/Throwable;)V

    return-object v6
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, LB0/Z;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final e()V
    .locals 3

    iget-boolean v0, p0, LB0/Z;->a:Z

    if-nez v0, :cond_1

    const/4 v0, 0x3

    const-string v1, "GoogleCertificatesRslt"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LB0/Z;->c:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LB0/Z;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, LB0/Z;->c:Ljava/lang/Throwable;

    invoke-static {v1, v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_0
    invoke-virtual {p0}, LB0/Z;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
