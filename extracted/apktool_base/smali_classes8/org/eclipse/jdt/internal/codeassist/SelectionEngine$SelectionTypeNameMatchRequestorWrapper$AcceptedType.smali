.class Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$SelectionTypeNameMatchRequestorWrapper$AcceptedType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$SelectionTypeNameMatchRequestorWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AcceptedType"
.end annotation


# instance fields
.field public access:Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;

.field public modifiers:I

.field public packageName:[C

.field public path:Ljava/lang/String;

.field public simpleTypeName:[C

.field final synthetic this$1:Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$SelectionTypeNameMatchRequestorWrapper;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$SelectionTypeNameMatchRequestorWrapper;I[C[CLjava/lang/String;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$SelectionTypeNameMatchRequestorWrapper$AcceptedType;->this$1:Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$SelectionTypeNameMatchRequestorWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$SelectionTypeNameMatchRequestorWrapper$AcceptedType;->modifiers:I

    iput-object p3, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$SelectionTypeNameMatchRequestorWrapper$AcceptedType;->packageName:[C

    iput-object p4, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$SelectionTypeNameMatchRequestorWrapper$AcceptedType;->simpleTypeName:[C

    iput-object p5, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$SelectionTypeNameMatchRequestorWrapper$AcceptedType;->path:Ljava/lang/String;

    iput-object p6, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$SelectionTypeNameMatchRequestorWrapper$AcceptedType;->access:Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;

    return-void
.end method
