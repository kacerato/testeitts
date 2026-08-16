.class public final synthetic Lpf/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LMf/a;


# instance fields
.field public final synthetic b:[F


# direct methods
.method public synthetic constructor <init>([F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpf/t;->b:[F

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lpf/t;->b:[F

    invoke-static {v0}, Lpf/A;->X4([F)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
