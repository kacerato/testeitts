.class public final Lcom/google/protobuf/TextFormat$b$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/TextFormat$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/TextFormat$b$c$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/google/protobuf/TextFormat$b$c$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/protobuf/TextFormat$b$c$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "type"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/protobuf/TextFormat$b$c;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/protobuf/TextFormat$b$c;->b:Lcom/google/protobuf/TextFormat$b$c$a;

    return-void
.end method
