.class public final LD0/R0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:LB0/c;


# direct methods
.method public constructor <init>(LB0/c;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, LD0/R0;->b:LB0/c;

    iput p2, p0, LD0/R0;->a:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, LD0/R0;->a:I

    return v0
.end method

.method public final b()LB0/c;
    .locals 1

    iget-object v0, p0, LD0/R0;->b:LB0/c;

    return-object v0
.end method
