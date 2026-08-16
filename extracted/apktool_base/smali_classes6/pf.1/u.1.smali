.class public final synthetic Lpf/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LMf/a;


# instance fields
.field public final synthetic b:[Z


# direct methods
.method public synthetic constructor <init>([Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpf/u;->b:[Z

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lpf/u;->b:[Z

    invoke-static {v0}, Lpf/A;->a5([Z)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
