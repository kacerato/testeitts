.class public Ld6/b$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld6/b;->F1(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ld6/c;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ld6/b;


# direct methods
.method public constructor <init>(Ld6/b;Ld6/c;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$downloadProgress",
            "val$finalProjectTittle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Ld6/b$l;->d:Ld6/b;

    iput-object p2, p0, Ld6/b$l;->b:Ld6/c;

    iput-object p3, p0, Ld6/b$l;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Ld6/b$l;->d:Ld6/b;

    iget-object v1, p0, Ld6/b$l;->b:Ld6/c;

    iget-object v2, p0, Ld6/b$l;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Ld6/b;->w1(Ld6/b;Ld6/c;Ljava/lang/String;)V

    return-void
.end method
