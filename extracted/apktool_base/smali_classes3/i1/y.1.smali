.class public final Li1/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu2/f$b;
.implements Lu2/f$a;


# instance fields
.field public final a:Lu2/f$b;

.field public final b:Lu2/f$a;


# direct methods
.method public synthetic constructor <init>(Lu2/f$b;Lu2/f$a;Li1/w;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li1/y;->a:Lu2/f$b;

    iput-object p2, p0, Li1/y;->b:Lu2/f$a;

    return-void
.end method


# virtual methods
.method public final a(Lu2/b;)V
    .locals 1

    iget-object v0, p0, Li1/y;->a:Lu2/f$b;

    invoke-interface {v0, p1}, Lu2/f$b;->a(Lu2/b;)V

    return-void
.end method

.method public final b(Lu2/e;)V
    .locals 1

    iget-object v0, p0, Li1/y;->b:Lu2/f$a;

    invoke-interface {v0, p1}, Lu2/f$a;->b(Lu2/e;)V

    return-void
.end method
