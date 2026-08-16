.class public LFk/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LFk/a;
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
.method public a()LFk/a;
    .locals 3

    new-instance v0, LFk/a;

    iget v1, p0, LFk/a$a;->a:I

    iget-object v2, p0, LFk/a$a;->b:Loh/g;

    invoke-direct {v0, v1, v2}, LFk/a;-><init>(ILoh/g;)V

    return-object v0
.end method

.method public b(I)LFk/a$a;
    .locals 0

    iput p1, p0, LFk/a$a;->a:I

    return-object p0
.end method

.method public c(LFk/j;)LFk/a$a;
    .locals 0

    iput-object p1, p0, LFk/a$a;->b:Loh/g;

    return-object p0
.end method
