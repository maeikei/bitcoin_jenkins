#include <iostream>
#include <cstdlib>
#include <cstdio>
#include <exception>
#include <string>
using namespace std;

string shell(const string &cmd)
{
	string ret = "";
	FILE* pipe = popen(cmd.c_str(), "r");
	if (nullptr == pipe) 
	{
		return ret;
	}
	char buffer[256];
	while(nullptr != fgets(buffer, sizeof(buffer), pipe))
	{
		ret += buffer;
	}
	pclose(pipe);
	return ret;
}


#define TRACE_VAR(x) \
{ \
	cout << #x << "=<" << x << ">" << endl;\
}

int main(void)
{
	string result = shell("top -n 1 | grep clang | grep findbugs");
	TRACE_VAR(result);
	return 0;
}

