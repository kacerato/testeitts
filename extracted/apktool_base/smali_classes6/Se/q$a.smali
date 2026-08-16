.class public final LSe/q$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LFe/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LSe/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LSe/q$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LFe/o<",
        "LSe/q$f;",
        "LBe/c;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:LBe/J$c;


# direct methods
.method public constructor <init>(LBe/J$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LSe/q$a;->b:LBe/J$c;

    return-void
.end method


# virtual methods
.method public a(LSe/q$f;)LBe/c;
    .locals 1

    new-instance v0, LSe/q$a$a;

    invoke-direct {v0, p0, p1}, LSe/q$a$a;-><init>(LSe/q$a;LSe/q$f;)V

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, LSe/q$f;

    invoke-virtual {p0, p1}, LSe/q$a;->a(LSe/q$f;)LBe/c;

    move-result-object p1

    return-object p1
.end method
