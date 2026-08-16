.class public Lhk/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field public b:Lhk/j;


# direct methods
.method public constructor <init>(Lhk/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhk/i;->b:Lhk/j;

    return-void
.end method


# virtual methods
.method public a()Lhk/j;
    .locals 1

    iget-object v0, p0, Lhk/i;->b:Lhk/j;

    return-object v0
.end method
