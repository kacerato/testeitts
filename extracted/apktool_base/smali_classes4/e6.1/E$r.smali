.class public Le6/E$r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LN9/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le6/E;->J()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le6/E;


# direct methods
.method public constructor <init>(Le6/E;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Le6/E$r;->a:Le6/E;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Le6/E$r;->a:Le6/E;

    invoke-static {v0}, Le6/E;->v(Le6/E;)Le6/X;

    move-result-object v0

    invoke-virtual {v0}, Le6/X;->i0()V

    return-void
.end method
