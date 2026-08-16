.class public final Lk0/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lk0/i;
.end annotation


# static fields
.field public static final a:Lk0/j;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static b:Z

.field public static c:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public static d:Z

.field public static e:Z

.field public static f:Z

.field public static g:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lk0/j;

    invoke-direct {v0}, Lk0/j;-><init>()V

    sput-object v0, Lk0/j;->a:Lk0/j;

    const/4 v0, 0x1

    sput-boolean v0, Lk0/j;->e:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    sget-boolean v0, Lk0/j;->e:Z

    return v0
.end method

.method public final b()Z
    .locals 1

    sget-boolean v0, Lk0/j;->b:Z

    return v0
.end method

.method public final c()Z
    .locals 1

    sget-boolean v0, Lk0/j;->d:Z

    return v0
.end method

.method public final d()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object v0, Lk0/j;->c:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final e()Z
    .locals 1

    sget-boolean v0, Lk0/j;->f:Z

    return v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object v0, Lk0/j;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final g(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "<set-?>"
        }
    .end annotation

    sput-boolean p1, Lk0/j;->e:Z

    return-void
.end method

.method public final h(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "<set-?>"
        }
    .end annotation

    sput-boolean p1, Lk0/j;->b:Z

    return-void
.end method

.method public final i(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "<set-?>"
        }
    .end annotation

    sput-boolean p1, Lk0/j;->d:Z

    return-void
.end method

.method public final j(Ljava/lang/Boolean;)V
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "<set-?>"
        }
    .end annotation

    sput-object p1, Lk0/j;->c:Ljava/lang/Boolean;

    return-void
.end method

.method public final k(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "<set-?>"
        }
    .end annotation

    sput-boolean p1, Lk0/j;->f:Z

    return-void
.end method

.method public final l(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "<set-?>"
        }
    .end annotation

    sput-object p1, Lk0/j;->g:Ljava/lang/String;

    return-void
.end method
