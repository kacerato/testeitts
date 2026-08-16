.class public final synthetic Lpf/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LMf/l;


# instance fields
.field public final synthetic b:Lpf/b;


# direct methods
.method public synthetic constructor <init>(Lpf/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpf/a;->b:Lpf/b;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lpf/a;->b:Lpf/b;

    invoke-static {v0, p1}, Lpf/b;->a(Lpf/b;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
