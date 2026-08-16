.class public final LLi/E0;
.super LLi/D0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, LLi/D0;-><init>()V

    return-void
.end method

.method public constructor <init>(LLi/E0;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, LLi/D0;-><init>(LLi/D0;)V

    return-void
.end method


# virtual methods
.method public copy()Lorg/bouncycastle/util/n;
    .locals 1

    new-instance v0, LLi/E0;

    invoke-direct {v0, p0}, LLi/E0;-><init>(LLi/E0;)V

    return-object v0
.end method
