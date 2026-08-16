.class public final LOe/S0$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LFe/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOe/S0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LFe/g<",
        "LDe/c;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:LOe/O1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOe/O1<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LOe/O1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOe/O1<",
            "TR;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOe/S0$c;->b:LOe/O1;

    return-void
.end method


# virtual methods
.method public a(LDe/c;)V
    .locals 1

    iget-object v0, p0, LOe/S0$c;->b:LOe/O1;

    invoke-virtual {v0, p1}, LOe/O1;->b(LDe/c;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, LDe/c;

    invoke-virtual {p0, p1}, LOe/S0$c;->a(LDe/c;)V

    return-void
.end method
