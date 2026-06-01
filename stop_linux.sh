#!/bin/bash
# Stop all OpenAlgo stack processes
echo "Stopping all services..."

pkill -f "openalgo/app.py"              && echo "  ✓ OpenAlgo stopped"         || echo "  - OpenAlgo not running"
pkill -f "option-chain/app.py\|option_chain/app.py" && echo "  ✓ Option-chain stopped"  || echo "  - Option-chain not running"
pkill -f "pipeline.socketio_server"     && echo "  ✓ Socket.io stopped"        || echo "  - Socket.io not running"
pkill -f "pipeline.scheduler"           && echo "  ✓ Scheduler stopped"        || echo "  - Scheduler not running"
pkill -f "pipeline.producer"            && echo "  ✓ Producer stopped"         || echo "  - Producer not running"
pkill -f "pipeline.consumers"           && echo "  ✓ Consumers stopped"        || echo "  - Consumers not running"
pkill -f "react-scripts start"          && echo "  ✓ Frontend stopped"         || echo "  - Frontend not running"

echo ""
echo "Docker services still running. To stop them:"
echo "  docker compose down"
