.class public LFk/T$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LFk/T;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:Loh/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LFk/T;
    .locals 3

    new-instance v0, LFk/T;

    iget v1, p0, LFk/T$a;->a:I

    iget-object v2, p0, LFk/T$a;->b:Loh/g;

    invoke-direct {v0, v1, v2}, LFk/T;-><init>(ILoh/g;)V

    return-object v0
.end method

.method public b(LFk/k;)LFk/T$a;
    .locals 0

    iput-object p1, p0, LFk/T$a;->b:Loh/g;

    return-object p0
.end method

.method public c(LFk/l;)LFk/T$a;
    .locals 0

    iput-object p1, p0, LFk/T$a;->b:Loh/g;

    return-object p0
.end method

.method public d(LFk/k;)LFk/T$a;
    .locals 0

    iput-object p1, p0, LFk/T$a;->b:Loh/g;

    return-object p0
.end method

.method public e([B)LFk/T$a;
    .locals 1

    new-instance v0, Loh/C0;

    invoke-direct {v0, p1}, Loh/C0;-><init>([B)V

    iput-object v0, p0, LFk/T$a;->b:Loh/g;

    return-object p0
.end method

.method public f(I)LFk/T$a;
    .locals 0

    iput p1, p0, LFk/T$a;->a:I

    return-object p0
.end method

.method public g(LFk/j;)LFk/T$a;
    .locals 0

    iput-object p1, p0, LFk/T$a;->b:Loh/g;

    return-object p0
.end method
