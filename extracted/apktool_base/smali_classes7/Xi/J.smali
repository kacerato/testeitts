.class public LXi/J;
.super LXi/c;
.source "SourceFile"


# instance fields
.field public final c:LXi/G;


# direct methods
.method public constructor <init>(ZLXi/G;)V
    .locals 0

    invoke-direct {p0, p1}, LXi/c;-><init>(Z)V

    if-eqz p2, :cond_0

    iput-object p2, p0, LXi/J;->c:LXi/G;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "\'parameters\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public d()LXi/G;
    .locals 1

    iget-object v0, p0, LXi/J;->c:LXi/G;

    return-object v0
.end method
