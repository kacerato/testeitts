.class public final LLi/G0;
.super LLi/F0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, LLi/F0;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, LLi/F0;-><init>(I)V

    return-void
.end method

.method public constructor <init>(LLi/G0;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, LLi/F0;-><init>(LLi/F0;)V

    return-void
.end method


# virtual methods
.method public copy()Lorg/bouncycastle/util/n;
    .locals 1

    new-instance v0, LLi/G0;

    invoke-direct {v0, p0}, LLi/G0;-><init>(LLi/G0;)V

    return-object v0
.end method
