.class public Lhk/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field public b:Lhk/e;


# direct methods
.method public constructor <init>(Lhk/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhk/a;->b:Lhk/e;

    return-void
.end method


# virtual methods
.method public a()Lhk/e;
    .locals 1

    iget-object v0, p0, Lhk/a;->b:Lhk/e;

    return-object v0
.end method
