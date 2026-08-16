.class public LLc/g$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLc/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:[Z

.field public final b:[Z

.field public c:Ljava/lang/Object;

.field public d:LLc/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LLc/b<",
            "TV;>;"
        }
    .end annotation
.end field

.field public final e:LLc/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LLc/c<",
            "TV;>;"
        }
    .end annotation
.end field

.field public final f:Lhe/k0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhe/k0<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Z

    iput-object v1, p0, LLc/g$b;->a:[Z

    .line 3
    new-array v0, v0, [Z

    iput-object v0, p0, LLc/g$b;->b:[Z

    .line 4
    new-instance v0, LLc/g$b$a;

    invoke-direct {v0, p0}, LLc/g$b$a;-><init>(LLc/g$b;)V

    iput-object v0, p0, LLc/g$b;->e:LLc/c;

    .line 5
    new-instance v0, LLc/g$b$b;

    invoke-direct {v0, p0}, LLc/g$b$b;-><init>(LLc/g$b;)V

    iput-object v0, p0, LLc/g$b;->f:Lhe/k0;

    return-void
.end method

.method public synthetic constructor <init>(LLc/g$a;)V
    .locals 0

    .line 6
    invoke-direct {p0}, LLc/g$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, LLc/g$b;->c:Ljava/lang/Object;

    iget-object v1, p0, LLc/g$b;->a:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v2

    iget-object v1, p0, LLc/g$b;->b:[Z

    aput-boolean v2, v1, v2

    iput-object v0, p0, LLc/g$b;->d:LLc/b;

    return-void
.end method
