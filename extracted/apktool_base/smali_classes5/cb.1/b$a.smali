.class public Lcb/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcb/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:Lcb/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcb/b<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:Z

.field public d:Lcb/b$b;

.field public e:Lcb/b$b;


# direct methods
.method public constructor <init>(Lcb/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcb/b<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lcb/b$a;-><init>(Lcb/b;Z)V

    return-void
.end method

.method public constructor <init>(Lcb/b;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "array",
            "allowRemove"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcb/b<",
            "TT;>;Z)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcb/b$a;->b:Lcb/b;

    .line 4
    iput-boolean p2, p0, Lcb/b$a;->c:Z

    return-void
.end method


# virtual methods
.method public a()Lcb/b$b;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcb/b$b<",
            "TT;>;"
        }
    .end annotation

    sget-boolean v0, Lcb/e;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcb/b$b;

    iget-object v1, p0, Lcb/b$a;->b:Lcb/b;

    iget-boolean v2, p0, Lcb/b$a;->c:Z

    invoke-direct {v0, v1, v2}, Lcb/b$b;-><init>(Lcb/b;Z)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcb/b$a;->d:Lcb/b$b;

    if-nez v0, :cond_1

    new-instance v0, Lcb/b$b;

    iget-object v1, p0, Lcb/b$a;->b:Lcb/b;

    iget-boolean v2, p0, Lcb/b$a;->c:Z

    invoke-direct {v0, v1, v2}, Lcb/b$b;-><init>(Lcb/b;Z)V

    iput-object v0, p0, Lcb/b$a;->d:Lcb/b$b;

    new-instance v0, Lcb/b$b;

    iget-object v1, p0, Lcb/b$a;->b:Lcb/b;

    iget-boolean v2, p0, Lcb/b$a;->c:Z

    invoke-direct {v0, v1, v2}, Lcb/b$b;-><init>(Lcb/b;Z)V

    iput-object v0, p0, Lcb/b$a;->e:Lcb/b$b;

    :cond_1
    iget-object v0, p0, Lcb/b$a;->d:Lcb/b$b;

    iget-boolean v1, v0, Lcb/b$b;->e:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_2

    iput v3, v0, Lcb/b$b;->d:I

    iput-boolean v2, v0, Lcb/b$b;->e:Z

    iget-object v1, p0, Lcb/b$a;->e:Lcb/b$b;

    iput-boolean v3, v1, Lcb/b$b;->e:Z

    return-object v0

    :cond_2
    iget-object v1, p0, Lcb/b$a;->e:Lcb/b$b;

    iput v3, v1, Lcb/b$b;->d:I

    iput-boolean v2, v1, Lcb/b$b;->e:Z

    iput-boolean v3, v0, Lcb/b$b;->e:Z

    return-object v1
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcb/b$a;->a()Lcb/b$b;

    move-result-object v0

    return-object v0
.end method
