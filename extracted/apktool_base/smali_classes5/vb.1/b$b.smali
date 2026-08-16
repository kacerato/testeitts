.class public Lvb/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvb/b;->S([Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Lvb/b;


# direct methods
.method public constructor <init>(Lvb/b;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$sessionId",
            "val$finalLayer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lvb/b$b;->d:Lvb/b;

    iput p2, p0, Lvb/b$b;->b:I

    iput p3, p0, Lvb/b$b;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lvb/b$b;->d:Lvb/b;

    iget v1, p0, Lvb/b$b;->b:I

    iget v2, p0, Lvb/b$b;->c:I

    invoke-static {v0, v1, v2}, Lvb/b;->c(Lvb/b;II)V

    return-void
.end method
