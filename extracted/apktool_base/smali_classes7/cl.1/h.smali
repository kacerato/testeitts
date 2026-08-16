.class public Lcl/h;
.super LXi/c;
.source "SourceFile"


# instance fields
.field public c:Lcl/i;


# direct methods
.method public constructor <init>(ZLcl/i;)V
    .locals 0

    invoke-direct {p0, p1}, LXi/c;-><init>(Z)V

    iput-object p2, p0, Lcl/h;->c:Lcl/i;

    return-void
.end method


# virtual methods
.method public d()Lcl/i;
    .locals 1

    iget-object v0, p0, Lcl/h;->c:Lcl/i;

    return-object v0
.end method
