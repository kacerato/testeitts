.class public Lcom/google/protobuf/TextFormat$b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/TextFormat$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:Lcom/google/protobuf/TextFormat$b$b;

.field public e:Lcom/google/protobuf/d2$b;

.field public f:Lcom/google/protobuf/l2;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/TextFormat$b$a;->a:Z

    iput-boolean v0, p0, Lcom/google/protobuf/TextFormat$b$a;->b:Z

    iput-boolean v0, p0, Lcom/google/protobuf/TextFormat$b$a;->c:Z

    sget-object v0, Lcom/google/protobuf/TextFormat$b$b;->ALLOW_SINGULAR_OVERWRITES:Lcom/google/protobuf/TextFormat$b$b;

    iput-object v0, p0, Lcom/google/protobuf/TextFormat$b$a;->d:Lcom/google/protobuf/TextFormat$b$b;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/TextFormat$b$a;->e:Lcom/google/protobuf/d2$b;

    invoke-static {}, Lcom/google/protobuf/l2;->d()Lcom/google/protobuf/l2;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/TextFormat$b$a;->f:Lcom/google/protobuf/l2;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/protobuf/TextFormat$b;
    .locals 9

    new-instance v8, Lcom/google/protobuf/TextFormat$b;

    iget-object v1, p0, Lcom/google/protobuf/TextFormat$b$a;->f:Lcom/google/protobuf/l2;

    iget-boolean v2, p0, Lcom/google/protobuf/TextFormat$b$a;->a:Z

    iget-boolean v3, p0, Lcom/google/protobuf/TextFormat$b$a;->b:Z

    iget-boolean v4, p0, Lcom/google/protobuf/TextFormat$b$a;->c:Z

    iget-object v5, p0, Lcom/google/protobuf/TextFormat$b$a;->d:Lcom/google/protobuf/TextFormat$b$b;

    iget-object v6, p0, Lcom/google/protobuf/TextFormat$b$a;->e:Lcom/google/protobuf/d2$b;

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/protobuf/TextFormat$b;-><init>(Lcom/google/protobuf/l2;ZZZLcom/google/protobuf/TextFormat$b$b;Lcom/google/protobuf/d2$b;Lcom/google/protobuf/TextFormat$a;)V

    return-object v8
.end method

.method public b(Z)Lcom/google/protobuf/TextFormat$b$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "allowUnknownExtensions"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/google/protobuf/TextFormat$b$a;->c:Z

    return-object p0
.end method

.method public c(Z)Lcom/google/protobuf/TextFormat$b$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "allowUnknownFields"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/google/protobuf/TextFormat$b$a;->a:Z

    return-object p0
.end method

.method public d(Lcom/google/protobuf/d2$b;)Lcom/google/protobuf/TextFormat$b$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parseInfoTreeBuilder"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/protobuf/TextFormat$b$a;->e:Lcom/google/protobuf/d2$b;

    return-object p0
.end method

.method public e(Lcom/google/protobuf/TextFormat$b$b;)Lcom/google/protobuf/TextFormat$b$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/protobuf/TextFormat$b$a;->d:Lcom/google/protobuf/TextFormat$b$b;

    return-object p0
.end method

.method public f(Lcom/google/protobuf/l2;)Lcom/google/protobuf/TextFormat$b$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "typeRegistry"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/protobuf/TextFormat$b$a;->f:Lcom/google/protobuf/l2;

    return-object p0
.end method
