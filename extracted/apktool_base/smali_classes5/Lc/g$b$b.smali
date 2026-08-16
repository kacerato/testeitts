.class public LLc/g$b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhe/k0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLc/g$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lhe/k0<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:LLc/g$b;


# direct methods
.method public constructor <init>(LLc/g$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LLc/g$b$b;->a:LLc/g$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    iget-object v0, p0, LLc/g$b$b;->a:LLc/g$b;

    iget-object v1, v0, LLc/g$b;->d:LLc/b;

    iget-object v2, v0, LLc/g$b;->c:Ljava/lang/Object;

    iget-object v0, v0, LLc/g$b;->e:LLc/c;

    invoke-interface {v1, v2, p1, v0}, LLc/b;->a(Ljava/lang/Object;Ljava/lang/Object;LLc/c;)V

    iget-object p1, p0, LLc/g$b$b;->a:LLc/g$b;

    iget-object p1, p1, LLc/g$b;->b:[Z

    const/4 v0, 0x0

    aget-boolean p1, p1, v0

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
