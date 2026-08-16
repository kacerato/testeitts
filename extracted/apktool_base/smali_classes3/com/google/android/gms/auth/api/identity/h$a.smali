.class public final Lcom/google/android/gms/auth/api/identity/h$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/auth/api/identity/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public c:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public d:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public e:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public f:Z

.field public g:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/auth/api/identity/h;
    .locals 9
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v8, Lcom/google/android/gms/auth/api/identity/h;

    iget-object v1, p0, Lcom/google/android/gms/auth/api/identity/h$a;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/auth/api/identity/h$a;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/auth/api/identity/h$a;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/auth/api/identity/h$a;->e:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/google/android/gms/auth/api/identity/h$a;->f:Z

    iget v6, p0, Lcom/google/android/gms/auth/api/identity/h$a;->g:I

    iget-object v7, p0, Lcom/google/android/gms/auth/api/identity/h$a;->d:Ljava/util/List;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/auth/api/identity/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/util/List;)V

    return-object v8
.end method

.method public b(Ljava/lang/String;)Lcom/google/android/gms/auth/api/identity/h$a;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/auth/api/identity/h$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/util/List;)Lcom/google/android/gms/auth/api/identity/h$a;
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/auth/api/identity/e;",
            ">;)",
            "Lcom/google/android/gms/auth/api/identity/h$a;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/auth/api/identity/h$a;->d:Ljava/util/List;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/google/android/gms/auth/api/identity/h$a;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/auth/api/identity/h$a;->e:Ljava/lang/String;

    return-object p0
.end method

.method public e(Z)Lcom/google/android/gms/auth/api/identity/h$a;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Lcom/google/android/gms/auth/api/identity/h$a;->f:Z

    return-object p0
.end method

.method public f(Ljava/lang/String;)Lcom/google/android/gms/auth/api/identity/h$a;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/auth/api/identity/h$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final g(Ljava/lang/String;)Lcom/google/android/gms/auth/api/identity/h$a;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/auth/api/identity/h$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final h(I)Lcom/google/android/gms/auth/api/identity/h$a;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput p1, p0, Lcom/google/android/gms/auth/api/identity/h$a;->g:I

    return-object p0
.end method
