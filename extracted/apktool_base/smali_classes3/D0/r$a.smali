.class public LD0/r$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build LC0/a;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = LD0/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A::",
        "Lcom/google/android/gms/common/api/a$b;",
        "ResultT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:LD0/n;

.field public b:Z

.field public c:[LB0/e;

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, LD0/r$a;->b:Z

    const/4 v0, 0x0

    iput v0, p0, LD0/r$a;->d:I

    return-void
.end method

.method public synthetic constructor <init>(LD0/E0;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, LD0/r$a;->b:Z

    const/4 p1, 0x0

    iput p1, p0, LD0/r$a;->d:I

    return-void
.end method

.method public static bridge synthetic g(LD0/r$a;)LD0/n;
    .locals 0

    iget-object p0, p0, LD0/r$a;->a:LD0/n;

    return-object p0
.end method


# virtual methods
.method public a()LD0/r;
    .locals 4
    .annotation build LC0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LD0/r<",
            "TA;TResultT;>;"
        }
    .end annotation

    iget-object v0, p0, LD0/r$a;->a:LD0/n;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "execute parameter required"

    invoke-static {v0, v1}, LG0/A;->b(ZLjava/lang/Object;)V

    new-instance v0, LD0/D0;

    iget-object v1, p0, LD0/r$a;->c:[LB0/e;

    iget-boolean v2, p0, LD0/r$a;->b:Z

    iget v3, p0, LD0/r$a;->d:I

    invoke-direct {v0, p0, v1, v2, v3}, LD0/D0;-><init>(LD0/r$a;[LB0/e;ZI)V

    return-object v0
.end method

.method public b(LT0/d;)LD0/r$a;
    .locals 1
    .param p1    # LT0/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    .annotation build LI2/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LT0/d<",
            "TA;",
            "Lv1/l<",
            "TResultT;>;>;)",
            "LD0/r$a<",
            "TA;TResultT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, LD0/C0;

    invoke-direct {v0, p1}, LD0/C0;-><init>(LT0/d;)V

    iput-object v0, p0, LD0/r$a;->a:LD0/n;

    return-object p0
.end method

.method public c(LD0/n;)LD0/r$a;
    .locals 0
    .param p1    # LD0/n;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    .annotation build LI2/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LD0/n<",
            "TA;",
            "Lv1/l<",
            "TResultT;>;>;)",
            "LD0/r$a<",
            "TA;TResultT;>;"
        }
    .end annotation

    iput-object p1, p0, LD0/r$a;->a:LD0/n;

    return-object p0
.end method

.method public d(Z)LD0/r$a;
    .locals 0
    .annotation build LC0/a;
    .end annotation

    .annotation build LI2/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "LD0/r$a<",
            "TA;TResultT;>;"
        }
    .end annotation

    iput-boolean p1, p0, LD0/r$a;->b:Z

    return-object p0
.end method

.method public varargs e([LB0/e;)LD0/r$a;
    .locals 0
    .param p1    # [LB0/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    .annotation build LI2/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "LB0/e;",
            ")",
            "LD0/r$a<",
            "TA;TResultT;>;"
        }
    .end annotation

    iput-object p1, p0, LD0/r$a;->c:[LB0/e;

    return-object p0
.end method

.method public f(I)LD0/r$a;
    .locals 0
    .annotation build LC0/a;
    .end annotation

    .annotation build LI2/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "LD0/r$a<",
            "TA;TResultT;>;"
        }
    .end annotation

    iput p1, p0, LD0/r$a;->d:I

    return-object p0
.end method
