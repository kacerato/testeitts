.class public abstract Lorg/eclipse/jdt/internal/compiler/codegen/Label;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final POS_NOT_SET:I = -0x1


# instance fields
.field public codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

.field public position:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/Label;->position:I

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/Label;->position:I

    .line 5
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/Label;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    return-void
.end method


# virtual methods
.method public abstract place()V
.end method
