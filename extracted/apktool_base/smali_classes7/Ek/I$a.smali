.class public LEk/I$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LEk/I;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:LFk/x;

.field public b:LEk/J;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LEk/I;
    .locals 3

    new-instance v0, LEk/I;

    iget-object v1, p0, LEk/I$a;->a:LFk/x;

    iget-object v2, p0, LEk/I$a;->b:LEk/J;

    invoke-direct {v0, v1, v2}, LEk/I;-><init>(LFk/x;LEk/J;)V

    return-object v0
.end method

.method public b(LEk/J;)LEk/I$a;
    .locals 0

    iput-object p1, p0, LEk/I$a;->b:LEk/J;

    return-object p0
.end method

.method public c(LFk/x;)LEk/I$a;
    .locals 0

    iput-object p1, p0, LEk/I$a;->a:LFk/x;

    return-object p0
.end method
