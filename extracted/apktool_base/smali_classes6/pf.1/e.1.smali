.class public final synthetic Lpf/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LMf/l;


# instance fields
.field public final synthetic b:Lpf/f;


# direct methods
.method public synthetic constructor <init>(Lpf/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpf/e;->b:Lpf/f;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lpf/e;->b:Lpf/f;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {v0, p1}, Lpf/f;->a(Lpf/f;Ljava/util/Map$Entry;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
