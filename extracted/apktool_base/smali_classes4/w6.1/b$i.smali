.class public Lw6/b$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZ6/f$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw6/b;->J1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lw6/b;


# direct methods
.method public constructor <init>(Lw6/b;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$sourceProjectName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lw6/b$i;->b:Lw6/b;

    iput-object p2, p0, Lw6/b$i;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    iget-object v0, p0, Lw6/b$i;->b:Lw6/b;

    iget-object v1, p0, Lw6/b$i;->a:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lw6/b;->w1(Lw6/b;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCancel()V
    .locals 0

    return-void
.end method
