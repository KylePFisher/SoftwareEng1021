
public aspect TraceAspectFisher {
	pointcut classToTrace(): within(*App);
	
	before() : call(String *.getName()) {
		System.out.println("[BGN] " + thisJoinPoint.getSignature() + ", " + thisJoinPoint.getSourceLocation().getLine());
	}
	
	after() : execution(String *.getName()) {
		System.out.println("[END] " + thisJoinPoint.getSourceLocation().getFileName());
	}
}
