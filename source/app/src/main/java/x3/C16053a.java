package x3;

import com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.p;
import com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.q;

public class C16053a extends p {

    public static final long f127919b = 300000;

    public static final int f127920c = 3;

    public C16053a(q orchestratorToChat) {
        super(orchestratorToChat);
    }

    @Override
    public String a(String output, int depth, String userPrompt) {
        return output;
    }

    @Override
    public String b(String prompt, int depth) {
        return prompt;
    }

    public final String c(String userPrompt, String analyzedPrompt) {
        StringBuilder sb2 = new StringBuilder();
        if (userPrompt != null && !userPrompt.trim().isEmpty()) {
            sb2.append(userPrompt.trim());
            sb2.append('\n');
        }
        if (analyzedPrompt != null && !analyzedPrompt.isEmpty()) {
            sb2.append(analyzedPrompt);
            sb2.append('\n');
        }
        sb2.append("You can use the available tools to inspect the workspace, find files, verify existence, and continue the task.");
        sb2.append('\n');
        sb2.append("Do not claim you cannot look at files when tools are available.");
        sb2.append('\n');
        sb2.append("Repeat the operation with the correct tool usage and continue from there.");
        return sb2.toString();
    }
}
