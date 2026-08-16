.class public LLc/g$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LLc/c;


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
        "LLc/c<",
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

    iput-object p1, p0, LLc/g$b$a;->a:LLc/g$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, LLc/g$b$a;->a:LLc/g$b;

    iget-object v1, v0, LLc/g$b;->a:[Z

    const/4 v2, 0x0

    aput-boolean p1, v1, v2

    iget-object p1, v0, LLc/g$b;->b:[Z

    const/4 v0, 0x1

    aput-boolean v0, p1, v2

    return-void
.end method
