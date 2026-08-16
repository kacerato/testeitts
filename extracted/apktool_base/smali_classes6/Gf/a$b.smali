.class public final LGf/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/time/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LGf/a;->e()Lkotlin/time/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lkotlin/time/q;
    .locals 2

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    const-string v1, "now(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcg/b;->b(Ljava/time/Instant;)Lkotlin/time/q;

    move-result-object v0

    return-object v0
.end method
